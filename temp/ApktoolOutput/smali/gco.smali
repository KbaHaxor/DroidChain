.class public final Lgco;
.super Ljava/lang/Object;
.source "SubscribePublisher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private synthetic b:Ldtr;

.field private synthetic c:Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lgco;->c:Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;

    iput-object p2, p0, Lgco;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lgco;->b:Ldtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lgco;->c:Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;

    iget-object v1, p0, Lgco;->a:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lgco;->b:Ldtr;

    const/4 v3, 0x0

    #calls: Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->notifyCaller$3e507a81(Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;->access$100$790f63e(Lcom/wandoujia/p4/subscribe/http/model/SubscribePublisher;Ljava/util/concurrent/CountDownLatch;Ldtr;Z)V

    .line 155
    return-void
.end method
