.class final Lcom/isaigu/gymapp/UIFactory$1;
.super Ljava/lang/Object;
.source "UIFactory.java"

# interfaces
.implements Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/UIFactory;->showOptionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/isaigu/gymapp/UIFactory$OptionSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;

.field final synthetic val$pickerViewDatas:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;Ljava/util/List;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/isaigu/gymapp/UIFactory$1;->val$listener:Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;

    iput-object p2, p0, Lcom/isaigu/gymapp/UIFactory$1;->val$pickerViewDatas:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsSelect(IIILandroid/view/View;)V
    .locals 2
    .param p1, "options1"    # I
    .param p2, "option2"    # I
    .param p3, "options3"    # I
    .param p4, "v"    # Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/UIFactory$1;->val$listener:Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/UIFactory$1;->val$pickerViewDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/isaigu/gymapp/UIFactory$1;->val$listener:Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;

    iget-object v1, p0, Lcom/isaigu/gymapp/UIFactory$1;->val$pickerViewDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/PickerViewData;

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;->onOptionSelect(Lcom/isaigu/gymapp/bean/PickerViewData;)V

    .line 33
    :cond_0
    return-void
.end method
