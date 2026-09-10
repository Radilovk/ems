.class final Lcom/isaigu/gymapp/UIFactory$3;
.super Ljava/lang/Object;
.source "UIFactory.java"

# interfaces
.implements Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/UIFactory;->showOptionView3(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;

.field final synthetic val$pickerViewDatas:Ljava/util/List;

.field final synthetic val$pickerViewDatas2:Ljava/util/List;

.field final synthetic val$pickerViewDatas3:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$listener:Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;

    iput-object p2, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas:Ljava/util/List;

    iput-object p3, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas2:Ljava/util/List;

    iput-object p4, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas3:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsSelect(IIILandroid/view/View;)V
    .locals 4
    .param p1, "options1"    # I
    .param p2, "option2"    # I
    .param p3, "options3"    # I
    .param p4, "v"    # Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$listener:Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p3, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$listener:Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;

    iget-object v1, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/PickerViewData;

    iget-object v2, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas2:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/PickerViewData;

    iget-object v3, p0, Lcom/isaigu/gymapp/UIFactory$3;->val$pickerViewDatas3:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/bean/PickerViewData;

    invoke-interface {v0, v1, v2, v3}, Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;->onOptionSelect(Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;Lcom/isaigu/gymapp/bean/PickerViewData;)V

    .line 68
    :cond_0
    return-void
.end method
