.class Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showAuthKeyRequired()V
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

    .prologue
    .line 236
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSyncHelper$2;->val$activity:Landroid/app/Activity;

    const-string v1, "\u0412\u044a\u0432\u0435\u0434\u0438 auth key (32 hex) \u0438 MAC \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$400(Landroid/app/Activity;Ljava/lang/String;)V

    .line 241
    return-void
.end method
