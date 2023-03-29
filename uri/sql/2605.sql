select
    products."name" as name,
    providers."name" as name
from
    products
    inner join providers on providers.id = products.id_providers
where
    products.id_categories = 6