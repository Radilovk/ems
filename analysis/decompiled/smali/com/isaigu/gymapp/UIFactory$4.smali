.class final Lcom/isaigu/gymapp/UIFactory$4;
.super Ljava/lang/Object;
.source "UIFactory.java"

# interfaces
.implements Lcom/bigkoo/pickerview/listener/CustomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/UIFactory;->showOptionView3(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/isaigu/gymapp/UIFactory$OptionSelectListener3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/isaigu/gymapp/UIFactory$4;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    const v2, 0x7f0f0152

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, "titleView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/isaigu/gymapp/UIFactory$4;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v2, 0x7f0f0137

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/isaigu/gymapp/UIFactory$4$1;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/UIFactory$4$1;-><init>(Lcom/isaigu/gymapp/UIFactory$4;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method
