tableextension 50501 SalesOrdLineTableExt extends "sales line"
{
    fields
    {
        field(50500; Priority; Enum Priority)
        {
            Caption = 'Priority';
            FieldClass = FlowField;
            CalcFormula = lookup(Item.Priority where("No." = field("No.")));
        }
        field(50501; Capacity; Decimal)
        {
            Caption = 'Capacity %';
            DataClassification = ToBeClassified;
        }
    }
}
