class User < ApplicationRecord
    attr_accessor :name, :age, :subdomain

    validates :name, :age, :subdomain, presence: true
    before_create :create_tenant

    private
     def create_tenant
        Apartment::Tenant.create(subdomain)
     end
end
