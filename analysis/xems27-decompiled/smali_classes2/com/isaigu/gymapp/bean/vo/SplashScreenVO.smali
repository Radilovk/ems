.class public Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;
.super Ljava/lang/Object;
.source "SplashScreenVO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;
    }
.end annotation


# instance fields
.field public appType:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

.field public createTime:Ljava/util/Date;

.field public description:Ljava/lang/String;

.field public enable:Z

.field public id:Ljava/lang/Long;

.field public imageUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
