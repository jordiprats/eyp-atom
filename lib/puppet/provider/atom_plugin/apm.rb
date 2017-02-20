Puppet::Type.type(:atom_plugin).provide(:apm) do
  desc 'atom plugin management'

  def exists?
    output = Puppet::Util::Execution.execute("/usr/bin/apm list -b | grep -Eo \"^" + resource[:name] + "@\"", {
      :uid                => resource[:atom_user],
      :gid                => 'root',
      :failonfail         => false,
      :combine            => true,
      :override_locale    => true,
    })
    output.split("\n")[0] == resource[:name] + "@"
  end

  def create
    debug "call create()"
    command = ['/usr/bin/apm']
    command.push("install")
    command.push(resource[:name])

    run_command(command)
  end

  def destroy
    debug "call destroy()"
    command = ['/usr/bin/apm']
    command.push("uninstall")
    command.push(resource[:name])

    run_command(command)
  end

  private

  def run_command(command)
    command = command.join ' '
    debug "run command: " + command
    output = Puppet::Util::Execution.execute(command, {
      :uid                => resource[:atom_user],
      :gid                => 'root',
      :failonfail         => false,
      :combine            => true,
      :override_locale    => true,
    })
    [output, $CHILD_STATUS.dup]
  end

end
