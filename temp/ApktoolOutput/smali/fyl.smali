.class final Lfyl;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

.field private synthetic b:Lfyj;


# direct methods
.method constructor <init>(Lfyj;Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lfyl;->b:Lfyj;

    iput-object p2, p0, Lfyl;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lfyl;->b:Lfyj;

    iget-object v0, v0, Lfyj;->a:Lfyi;

    iget-object v0, v0, Lfyi;->a:Lgdw;

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v1

    .line 87
    :goto_0
    invoke-virtual {v1}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leeq;

    if-eqz v0, :cond_0

    .line 88
    iget-object v2, p0, Lfyl;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-interface {v0, v2}, Leeq;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method