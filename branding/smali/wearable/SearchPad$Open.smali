.class final Lcom/isaigu/gymapp/wearable/SearchPad$Open;
.super Ljava/lang/Object;
.source "SearchPad.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SearchPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Open"
.end annotation


# instance fields
.field private final et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Open;->et:Landroid/widget/EditText;

    .line 106
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Open;->et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 112
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_16

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    const-string v3, "xems_search_pad"

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 121
    :cond_16
    :goto_16
    return-void

    .line 115
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Open;->et:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string v3, "user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    const/4 v1, 0x0

    .line 117
    :goto_2e
    new-instance v3, Lcom/isaigu/gymapp/wearable/SearchPad;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/SearchPad$Open;->et:Landroid/widget/EditText;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v1, v5}, Lcom/isaigu/gymapp/wearable/SearchPad;-><init>(Landroid/widget/EditText;Landroid/view/ViewGroup;ILcom/isaigu/gymapp/wearable/SearchPad$1;)V

    # invokes: Lcom/isaigu/gymapp/wearable/SearchPad;->show()V
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/SearchPad;->access$100(Lcom/isaigu/gymapp/wearable/SearchPad;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_16

    .line 118
    :catch_3c
    move-exception v1

    .line 119
    const-string v2, "SearchPad.open"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 116
    :cond_43
    :try_start_43
    const-string v3, "program"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_48} :catch_3c

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_4d
    const/4 v1, 0x2

    goto :goto_2e
.end method
