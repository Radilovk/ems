.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ActivateListener;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivateListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 747
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->armFromConfig()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$400()V

    .line 748
    return-void
.end method
