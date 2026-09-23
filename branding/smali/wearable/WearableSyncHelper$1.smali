.class Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showNotifyMissing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f0d0187

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100(Landroid/app/Activity;I)V

    .line 182
    return-void
.end method
