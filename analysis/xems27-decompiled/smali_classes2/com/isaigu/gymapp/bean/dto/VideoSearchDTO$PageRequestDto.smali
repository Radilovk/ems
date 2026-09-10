.class public Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;
.super Ljava/lang/Object;
.source "VideoSearchDTO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageRequestDto"
.end annotation


# instance fields
.field public page:I

.field public size:I

.field public sort:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$SortDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
