select
    categories.name,
    sum(products.amount) as sum
from
    categories
    inner join products on products.id_categories = categories.id
group by
    categories."name"