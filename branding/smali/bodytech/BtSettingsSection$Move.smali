.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;
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
    name = "Move"
.end annotation


# instance fields
.field final ch:I

.field final dir:I

.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;II)V
    .registers 4

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 270
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;->ch:I

    .line 271
    iput p3, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;->dir:I

    .line 272
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 276
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 277
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;->ch:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;->dir:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->move(II)V

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Move;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 279
    return-void
.end method
