.class public Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO;
.super Ljava/lang/Object;
.source "VideoSearchDTO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$SortDto;,
        Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$SearchDTO;,
        Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;
    }
.end annotation


# instance fields
.field public pageBean:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$PageRequestDto;

.field public search:Lcom/isaigu/gymapp/bean/dto/VideoSearchDTO$SearchDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
