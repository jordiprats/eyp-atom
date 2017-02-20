Puppet::Type.newtype(:atom_plugin) do
  @doc = 'Manage atom plugins'

  ensurable

  autorequire(:package) do
    'atom'
  end

  newparam(:name, :namevar => true) do
    desc 'package to manage'

    validate do |value|
      unless value.is_a?(String)
        raise Pupper::Error,
          "not a string, modafuca"
      end
    end
  end

  newparam(:atom_user) do
    desc "atom user"
    defaultto("root")
  end

end
