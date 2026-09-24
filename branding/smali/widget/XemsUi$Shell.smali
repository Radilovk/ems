.class public final Lcom/isaigu/gymapp/widget/XemsUi$Shell;
.super Ljava/lang/Object;
.source "XemsUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Shell"
.end annotation


# instance fields
.field public badge:Landroid/widget/TextView;

.field public body:Landroid/widget/LinearLayout;

.field public close:Landroid/widget/TextView;

.field public dialog:Landroid/app/Dialog;

.field public footer:Landroid/widget/LinearLayout;

.field public info:Landroid/widget/TextView;

.field public scroll:Landroid/widget/ScrollView;

.field public subtitle:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
