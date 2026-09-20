.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliderField"
.end annotation


# instance fields
.field final max:I

.field final min:I

.field value:I

.field valueView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(III)V
    .registers 4

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->min:I

    .line 151
    iput p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->max:I

    .line 152
    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->clamp(III)I
    invoke-static {p3, p1, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$100(III)I

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$SliderField;->value:I

    .line 153
    return-void
.end method
