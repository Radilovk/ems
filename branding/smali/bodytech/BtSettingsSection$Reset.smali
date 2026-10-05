.class final Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;
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
    name = "Reset"
.end annotation


# instance fields
.field final sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;)V
    .registers 2

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    .line 248
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 252
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->reset()V

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Reset;->sheet:Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtSettingsSection$Sheet;->render()V

    .line 254
    return-void
.end method
