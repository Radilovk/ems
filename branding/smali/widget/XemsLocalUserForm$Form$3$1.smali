.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3$1;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3$1;->this$1:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPicked(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3$1;->this$1:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->newPhoto:Landroid/graphics/Bitmap;

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3$1;->this$1:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->showPhoto(Landroid/graphics/Bitmap;)V

    .line 258
    return-void
.end method
