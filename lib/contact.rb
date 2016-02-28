class Contact

  @@filepath = nil
  def self.filepath=(path=nil)
    @@filepath = File.join(APP_ROOT, path)
  end

  def self.file_exists?
    return false unless @@filepath and File.exists?(@@filepath)
    return true
  end

  def self.file_usable?
    return false unless @@filepath
    return false unless File.exists?(@@filepath)
    return false unless File.readable?(@@filepath)
    return false unless File.writable?(@@filepath)
    return true
  end

  def self.create_file
    File.open(@@filepath, 'w') unless file_exists?
    return file_usable?  
  end

  def self.saved_contacts
    # read the file
    # return instances of contact
  end

end
