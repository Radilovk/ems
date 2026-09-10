.class public Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;
.super Ljava/lang/Object;
.source "StatusLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/StatusLoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field dialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/widget/StatusLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;->dialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    .line 123
    return-void
.end method


# virtual methods
.method public build()Lcom/isaigu/gymapp/widget/StatusLoadingDialog;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/StatusLoadingDialog$Builder;->dialog:Lcom/isaigu/gymapp/widget/StatusLoadingDialog;

    return-object v0
.end method
