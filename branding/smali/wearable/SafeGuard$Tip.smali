.class final Lcom/isaigu/gymapp/wearable/SafeGuard$Tip;
.super Ljava/lang/Object;
.source "SafeGuard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/SafeGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tip"
.end annotation


# instance fields
.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/SafeGuard$Tip;->text:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 236
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    .line 237
    instance-of v1, v0, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v1, :cond_f

    .line 238
    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SafeGuard$Tip;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 242
    :cond_f
    :goto_f
    return-void

    .line 240
    :catch_10
    move-exception v0

    goto :goto_f
.end method
