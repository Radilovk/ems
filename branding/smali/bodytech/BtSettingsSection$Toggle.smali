.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;
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
    name = "Toggle"
.end annotation


# instance fields
.field final ch:I

.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;I)V
    .registers 3

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 276
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;->ch:I

    .line 277
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;->ch:I

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->open:[Z

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;->ch:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_11
    aput-boolean v0, v1, v2

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Toggle;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 283
    return-void

    .line 281
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method
