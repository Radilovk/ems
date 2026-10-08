.class final Lcom/isaigu/gymapp/wearable/ClientSort$Open;
.super Ljava/lang/Object;
.source "ClientSort.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ClientSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Open"
.end annotation


# instance fields
.field private final et:Landroid/widget/EditText;

.field private final owner:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Open;->et:Landroid/widget/EditText;

    .line 439
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Open;->owner:Ljava/lang/Object;

    .line 440
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 444
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/QuickStart;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_16

    .line 447
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Open;->et:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ClientSort$Open;->owner:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/wearable/ClientSort;->sheet(Landroid/app/Activity;Landroid/widget/EditText;Ljava/lang/Object;Landroid/widget/TextView;)V

    .line 449
    :cond_16
    return-void
.end method
