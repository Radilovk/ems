.class final Lcom/isaigu/gymapp/ai/LiveParamSheet$Close;
.super Ljava/lang/Object;
.source "LiveParamSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/LiveParamSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->close()V

    .line 150
    return-void
.end method
