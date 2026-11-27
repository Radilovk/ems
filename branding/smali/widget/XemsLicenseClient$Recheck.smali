.class final Lcom/isaigu/gymapp/widget/XemsLicenseClient$Recheck;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Recheck"
.end annotation


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Recheck;->ref:Ljava/lang/ref/WeakReference;

    .line 338
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Recheck;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 343
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_26

    .line 344
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "update_checked"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoCheck(Landroid/app/Activity;)V

    .line 347
    :cond_26
    return-void
.end method
