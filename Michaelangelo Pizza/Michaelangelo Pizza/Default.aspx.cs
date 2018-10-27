// written by https://github.com/ramimas
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void sizeList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void crustList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void addCheckbox_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void purchaseButton_Click(object sender, EventArgs e)
    {
        double totalVal = 0.00;

        //Get value for pizza size
        string pizzaSize = sizeList.SelectedValue;
        //Get value for pizza crust
        string pizzaCrust = crustList.SelectedValue;
        //Add up charges so far
        totalVal = double.Parse(pizzaSize) + double.Parse(pizzaCrust);

        //Get value for additional ingredients (checkbox list)
        string[] selecteditems = addCheckbox.Items.Cast<ListItem>().Where(l => l.Selected)
            .Select(l => l.Value)
            .ToArray();
        //Create Comma Seperated values from the array here
        string ingredients = String.Join(";", selecteditems);

        //Add up charges for ingredients
        if (ingredients.Contains("pepperoni"))
            totalVal += 1.50;
        if (ingredients.Contains("onions"))
            totalVal += 0.75;
        if (ingredients.Contains("greenPep"))
            totalVal += 0.50;
        if (ingredients.Contains("redPep"))
            totalVal += 0.75;
        if (ingredients.Contains("anchovies"))
            totalVal += 2.00;

        //Check for the special deal.
        if (ingredients.Contains("pepperoni") && ingredients.Contains("greenPep") && ingredients.Contains("anchovies"))
            totalVal -= 2.00;
        else if (ingredients.Contains("pepperoni") && ingredients.Contains("redPep") && ingredients.Contains("onions"))
            totalVal -= 2.00;

        //Update the total, when the purchase button is pressed
        totalLable.Text = totalVal.ToString();

    }
}