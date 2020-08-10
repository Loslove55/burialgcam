.class final Lcom/marco/fixes/Fixes$6;
.super Ljava/lang/Object;
.source "Fixes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/fixes/Fixes;->buttonChangeCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/marco/fixes/Fixes;->resetButtons()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/marco/fixes/Fixes;->running:Z

    return-void
.end method
