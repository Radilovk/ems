.class final Lcom/isaigu/gymapp/wearable/NextClient$Later;
.super Ljava/lang/Object;
.source "NextClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NextClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Later"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 533
    # invokes: Lcom/isaigu/gymapp/wearable/NextClient;->close()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->access$400()V

    .line 534
    return-void
.end method
