.class Lcom/isaigu/gymapp/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/BaseActivity;->showLoadingDialogWithText(Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 129
    iput-object p1, p0, Lcom/isaigu/gymapp/BaseActivity$2;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$2;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/BaseActivity;->dismissStatusDialog()V

    .line 132
    return-void
.end method
