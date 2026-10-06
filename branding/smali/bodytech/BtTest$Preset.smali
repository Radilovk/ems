.class final Lcom/isaigu/gymapp/bodytech/BtTest$Preset;
.super Ljava/lang/Object;
.source "BtTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Preset"
.end annotation


# instance fields
.field final t:Lcom/isaigu/gymapp/bodytech/BtTest;

.field final value:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtTest;I)V
    .registers 3

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    .line 163
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    .line 164
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 168
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->value:I

    iput v1, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->level:I

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTest$Preset;->t:Lcom/isaigu/gymapp/bodytech/BtTest;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtTest;->redraw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 171
    return-void
.end method
