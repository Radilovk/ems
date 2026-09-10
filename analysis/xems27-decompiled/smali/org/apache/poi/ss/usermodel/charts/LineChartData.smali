.class public interface abstract Lorg/apache/poi/ss/usermodel/charts/LineChartData;
.super Ljava/lang/Object;
.source "LineChartData.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/charts/ChartData;


# virtual methods
.method public abstract addSeries(Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;Lorg/apache/poi/ss/usermodel/charts/ChartDataSource;)Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "*>;",
            "Lorg/apache/poi/ss/usermodel/charts/ChartDataSource<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;"
        }
    .end annotation
.end method

.method public abstract getSeries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/charts/LineChartSeries;",
            ">;"
        }
    .end annotation
.end method
