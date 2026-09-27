.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4$1;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4$1;->this$1:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPicked(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4$1;->this$1:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->newPhoto:Landroid/graphics/Bitmap;

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4$1;->this$1:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->showPhoto(Landroid/graphics/Bitmap;)V

    .line 276
    return-void
.end method
