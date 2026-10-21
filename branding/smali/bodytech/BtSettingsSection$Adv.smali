.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Adv;
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
    name = "Adv"
.end annotation


# instance fields
.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V
    .registers 2

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Adv;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 423
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 427
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Adv;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Adv;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->adv:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, v1, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->adv:Z

    .line 428
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Adv;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 429
    return-void

    .line 427
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method
