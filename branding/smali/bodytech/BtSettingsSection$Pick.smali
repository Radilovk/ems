.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;
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
    name = "Pick"
.end annotation


# static fields
.field static final SLIDER:I = 0x0

.field static final WAVE:I = 0x1


# instance fields
.field final ch:I

.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

.field final value:I

.field final what:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;III)V
    .registers 5

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 318
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->what:I

    .line 319
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->ch:I

    .line 320
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->value:I

    .line 321
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 325
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 326
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->what:I

    if-nez v0, :cond_14

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->ch:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->value:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setSlider(II)V

    .line 328
    :goto_e
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 329
    return-void

    .line 327
    :cond_14
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->value:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setWave(I)V

    goto :goto_e
.end method
