.class public final enum Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;
.super Ljava/lang/Enum;
.source "FolderMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

.field public static final enum READ:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

.field public static final enum UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->READ:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    new-instance v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    const-string v1, "UNREAD"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    sget-object v1, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->READ:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->UNREAD:Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->$VALUES:[Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->$VALUES:[Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/launcher/manager/FolderMessageManager$MessageStatus$Status;

    return-object v0
.end method