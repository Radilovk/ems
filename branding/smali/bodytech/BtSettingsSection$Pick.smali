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
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 308
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->what:I

    .line 309
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->ch:I

    .line 310
    iput p4, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->value:I

    .line 311
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 315
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 316
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->what:I

    if-nez v0, :cond_14

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->ch:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->value:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setSlider(II)V

    .line 318
    :goto_e
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 319
    return-void

    .line 317
    :cond_14
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Pick;->value:I

    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->setWave(I)V

    goto :goto_e
.end method
