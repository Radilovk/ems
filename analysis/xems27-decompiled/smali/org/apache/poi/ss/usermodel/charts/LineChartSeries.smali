.class public interface abstract Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;
.super Ljava/lang/Object;
.source "LineChartSeries.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartSeries;


# virtual methods
.method public abstract getCategoryAxisData()Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getValues()Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end method
