.class public final Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LaunchSourcePackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;",
        ">;"
    }
.end annotation


# instance fields
.field public launch_keyword:Ljava/lang/String;

.field public launch_source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 57
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;->launch_source:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;->launch_source:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;->launch_keyword:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;->launch_keyword:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;->build()Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage;-><init>(Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;Ld;)V

    return-object v0
.end method

.method public final launch_keyword(Ljava/lang/String;)Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;->launch_keyword:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public final launch_source(Ljava/lang/String;)Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wandoujia/log/toolkit/model/LaunchSourcePackage$Builder;->launch_source:Ljava/lang/String;

    .line 64
    return-object p0
.end method