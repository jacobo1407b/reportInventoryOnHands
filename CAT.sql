select
esi.item_number,
ECB.SEGMENT1||','||ECB.SEGMENT2 Category
from EGP_SYSTEM_ITEMS esi,
EGP_ITEM_CATEGORIES EIC,
EGP_CATEGORIES_B ECB
where 1 = 1
and esi.organization_id = 300000118783270
and esi.item_number = 'CM4751400'
and esi.INVENTORY_ITEM_ID = EIC.INVENTORY_ITEM_ID(+)
and esi.organization_id = EIC.organization_id(+)
and EIC.CATEGORY_ID  = ECB.CATEGORY_ID(+)

--SR41210