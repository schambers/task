module DataSeeder
  def self.seed
    Status.create(:name => "Active")
    Status.create(:name => "Done")
  end
end
