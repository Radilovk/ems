.class public Lcom/isaigu/gymapp/UIFactory;
.super Ljava/lang/Object;
.source "UIFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;,
        Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;
    }
.end annotation


# static fields
.field private static pvCustomOptions:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

.field private static pvCustomOptions3:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    return-object v0
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions3:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    return-object v0
.end method

.method public static showOptionView(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/isaigu/gymapp/UIFactory$OptionSelectListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "selected"    # I
    .param p4, "listener"    # Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;I",
            "Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "pickerViewDatas":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;

    new-instance v2, Lcom/isaigu/gymapp/UIFactory$1;

    invoke-direct {v2, p4, p2}, Lcom/isaigu/gymapp/UIFactory$1;-><init>(Lcom/isaigu/gymapp/UIFactory$OptionSelectListener;Ljava/util/List;)V

    invoke-direct {v0, p0, v2}, Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    .line 35
    .local v0, "builder":Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;
    const v2, 0x7f040063

    new-instance v3, Lcom/isaigu/gymapp/UIFactory$2;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/UIFactory$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 48
    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    .line 49
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;->build1()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    .line 50
    sget-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    invoke-virtual {v2, p2}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->setPicker(Ljava/util/List;)V

    .line 51
    sget-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    invoke-virtual {v2, p3}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->setSelectOptions(I)V

    .line 53
    sget-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 55
    .local v1, "win":Landroid/view/Window;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    sget-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->show(Z)V

    .line 57
    return-void
.end method

.method public static showOptionView3(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/PickerViewData;",
            ">;",
            "Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "pickerViewDatas":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    .local p3, "pickerViewDatas2":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    .local p4, "pickerViewDatas3":Ljava/util/List;, "Ljava/util/List<Lcom/isaigu/gymapp/bean/PickerViewData;>;"
    const/4 v4, 0x0

    .line 62
    new-instance v0, Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;

    new-instance v2, Lcom/isaigu/gymapp/UIFactory$3;

    invoke-direct {v2, p5, p2, p3, p4}, Lcom/isaigu/gymapp/UIFactory$3;-><init>(Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v0, p0, v2}, Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    .line 70
    .local v0, "builder":Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;
    const v2, 0x7f040068

    new-instance v3, Lcom/isaigu/gymapp/UIFactory$4;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/UIFactory$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;->setLayoutRes(ILcom/bigkoo/pickerview/listener/CustomListener;)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 83
    invoke-virtual {v2, v3}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;->isDialog(Z)Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;

    .line 84
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;->build1()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions3:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    .line 85
    sget-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions3:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    invoke-virtual {v2, p2, p3, p4}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->setNPicker(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 87
    sget-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions3:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 89
    .local v1, "win":Landroid/view/Window;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget-object v2, Lcom/isaigu/gymapp/UIFactory;->pvCustomOptions3:Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    invoke-virtual {v2, v4}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;->show(Z)V

    .line 91
    return-void
.end method
