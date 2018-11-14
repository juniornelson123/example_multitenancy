class Company < ApplicationRecord
    after_create :create_tenant

    def create_tenant
        Apartment::Tenant.create(self.subdomain)
    end
end
