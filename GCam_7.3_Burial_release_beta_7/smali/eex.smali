.class final synthetic Leex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Leez;


# direct methods
.method public constructor <init>(Leez;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leex;->a:Leez;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Leex;->a:Leez;

    iget-object v0, v0, Leez;->a:Lefa;

    iget-object v0, v0, Lefa;->z:Ldjs;

    invoke-virtual {v0}, Ldjs;->d()V

    return-void
.end method
