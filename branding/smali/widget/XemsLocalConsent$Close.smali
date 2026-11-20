.class final Lcom/isaigu/gymapp/widget/XemsLocalConsent$Close;
.super Ljava/lang/Object;
.source "XemsLocalConsent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field private final d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$Close;->d:Landroid/app/Dialog;

    .line 347
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalConsent$Close;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 352
    return-void
.end method
