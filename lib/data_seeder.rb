module DataSeeder
  def self.seed
    Status.create(:status => "Active")
    Status.create(:status => "Done")
  end
end
