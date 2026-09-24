.class Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;
.super Ljava/lang/Object;
.source "XemsLicenseClient.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLicenseClient$UpdateDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLicenseClient;->autoCheck(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$p:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 194
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$p:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 197
    if-eqz p2, :cond_3

    .line 208
    :cond_2
    :goto_2
    return-void

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_checked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iget-boolean v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$p:Landroid/content/SharedPreferences;

    const-string v1, "update_skipped"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    if-eq v0, v1, :cond_2

    .line 207
    :cond_31
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    goto :goto_2
.end method
