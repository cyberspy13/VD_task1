pageextension 50500 ItemPageExt extends "Item Card"
{
    layout
    {
        addafter("Purchasing Code")
        {
            field(Priority; Rec.Priority)
            {
                ApplicationArea = All;
                ToolTip = 'Priority';
            }
        }
    }
}