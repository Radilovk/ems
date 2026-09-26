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

    .line 200
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$p:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;Ljava/lang/String;)V
    .registers 6

    .line 203
    if-eqz p2, :cond_3

    .line 204
    return-void

    .line 206
    :cond_3
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$p:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "update_checked"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    if-eqz p1, :cond_39

    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_21

    goto :goto_39

    .line 210
    :cond_21
    iget-boolean p2, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->mandatory:Z

    if-nez p2, :cond_33

    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$p:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "update_skipped"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iget v0, p1, Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;->versionCode:I

    if-ne p2, v0, :cond_33

    .line 211
    return-void

    .line 213
    :cond_33
    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLicenseClient$4;->val$a:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->offer(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLicenseClient$Update;)V

    .line 214
    return-void

    .line 208
    :cond_39
    :goto_39
    return-void
.end method
