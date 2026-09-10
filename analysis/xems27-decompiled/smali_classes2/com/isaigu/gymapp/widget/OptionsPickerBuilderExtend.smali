.class public Lcom/isaigu/gymapp/widget/OptionsPickerBuilderExtend;
.super Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;
.source "OptionsPickerBuilderExtend.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/bigkoo/pickerview/builder/OptionsPickerBuilder;-><init>(Landroid/content/Context;Lcom/bigkoo/pickerview/listener/OnOptionsSelectListener;)V

    .line 17
    return-void
.end method


# virtual methods
.method public build1()Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;
    .locals 3

    .line 21
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;

    const-string v1, "mPickerOptions"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bigkoo/pickerview/configure/PickerOptions;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/widget/OptionsPickerViewExtend;-><init>(Lcom/bigkoo/pickerview/configure/PickerOptions;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 25
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    const/4 v0, 0x0

    return-object v0
.end method
