.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$MasterOpenListener;
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
    name = "MasterOpenListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 890
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toggleMasterPanel()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$700()V

    .line 891
    return-void
.end method
