.class final Lcpq;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcpt;


# instance fields
.field private synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcpq;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 619
    iget-object v0, p0, Lcpq;->a:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Ljava/util/Map;)V

    .line 620
    return-void
.end method
