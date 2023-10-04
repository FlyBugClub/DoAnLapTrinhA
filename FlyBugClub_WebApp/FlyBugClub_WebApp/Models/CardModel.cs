namespace FlyBugClub_WebApp.Models
{
    public class CardModel
    {
        public string NoteBill { get; set; }
        public string CardId { get; set; }
        public decimal Total { get; set; }

        private List<Item> _items = new List<Item>();

        public int GetCountItem()
        {
            return _items.Count;
        }

        public decimal getTotal()
        {
            decimal total = 0;
            foreach(var it in _items)
            {
                total += it.lineTotla;
            }
            return total;
        }

        public int addItem(Item item)
        {
            foreach(var it in _items)
            {
                it.lineTotla += it.Quantity * it.Price;
            }

            _items.Add(item);
            return _items.Count;
        }

        public void UpdateQuantity(string id, int qty, string btnCmd)
        {
            foreach(Item it in _items)
            {
                if(it.Id == id)
                {
                    if(btnCmd == "+")
                    {
                        it.Quantity += qty;
                    }
                    else
                    {
                        it.Quantity -= qty;
                    }
                }
            }
        }

        public List<Item> getAllItem() { 
            return _items; 
        }

        public void setAllItem(List<Item> items)
        {
            _items = items;
        }

    }
}
