.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Open;
.super Ljava/lang/Object;
.source "BtSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Open"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Open;->a:Landroid/app/Activity;

    .line 69
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Open;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->show()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 78
    :goto_a
    return-void

    .line 75
    :catch_b
    move-exception v0

    .line 76
    const-string v1, "BtSettingsSection.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
