.class final Ldor;
.super Ljava/lang/Object;
.source "ListPresenterFactory.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;

    iget-boolean v0, v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->a:Z

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
