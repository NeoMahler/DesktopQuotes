/*
* Copyright (c) 2018 Ondo Alvellë
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 3 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Ondo Alvellë <ondo.alvelle@gmail.com>
*/

public class ContentStack : Gtk.Stack {
    private struct Content {
        string text;
        string author;
    }

    static Content[] content = {
        Content () {
            text = "It is important to draw wisdom from different places. If you take it from only one place it become rigid and stale.",
            author = "Iroh"
        },
        Content () {
            text = "Pride is not the opposite of shame, but it’s source. True humility is the only antidote to shame.",
            author = "Iroh"
        },
        Content () {
            text = "Life happens wherever you are, whether you make it or not.",
            author = "Iroh"
        },        Content () {
            text = "There is nothing wrong with letting people who love you, help you.",
            author = "Iroh"
        },
        Content () {
            text = "Sometimes the best way to solve your own problems is to help someone else.",
            author = "Iroh"
        },
        Content () {
            text = "If you look for the light, you can often find it. But if you look for the dark, that is all you will ever see.",
            author = "Iroh"
        },
        Content () {
            text = "Many things that seem threatening in the dark become welcoming when we shine light on them.",
            author = "Iroh"
        },
        Content () {
            text = "Perfection and power are overrated.",
            author = "Iroh"
        },
        Content () {
            text = "Failure is only the opportunity to begin again. Only this time, more wisely.",
            author = "Iroh"
        },
        Content () {
            text = "Hope is something you give yourself.",
            author = "Iroh"
        },
        Content () {
            text = "Anyone is capable of great good and great evil. Everyone has to be treated like they are worth giving a chance.",
            author = "Aang"
        },
        Content () {
            text = "The greatest illusion in this world is the illusion of separation. Things you think are separate and different are actually one and the same. We are all one people, but we live as if divided.",
            author = "Guru Pathik"
        },
        Content () {
            text = "When we hit our lowest point, we are open to the greatest change.",
            author = "Aang"
        },
        Content () {
            text = "Admitting your fears is the the first and the most difficult step in overcoming them.",
            author = "Tenzin"
        },
        Content () {
            text = "True wisdom begins when we accept things as they are.",
            author = "Tenzin"
        },
        Content () {
            text = "All we have to decide is what to do with the time that is given us.",
            author = "Gandalf"
        },
        Content () {
            text = "Many that live deserve death. And some that die deserve life. Can you give it to them? Do not be too eager to deal out death in judgement. For even the very wise cannot see all ends.",
            author = "Gandalf"
        },
        Content () {
            text = "Not all those who wander are lost.",
            author = "Gandalf"
        },
        Content () {
            text = "We can't concern ourselves with what was, we must act on what is.",
            author = "Gyatso"
        },
        Content () {
            text = "There are three things all wise men fear: the sea in storm, a night with no moon, and the anger of a gentle man.",
            author = "Count Therpe"
        },
        Content () {
            text = "Metal rusts, music lasts forever.",
            author = "Kvothe"
        },
        Content () {
            text = "A long stretch of road will teach you more about yourself than a hundred years of quiet introspection.",
            author = "Kvothe"
        },
        Content () {
            text = "Anyone can love a thing because. That's as easy as putting a penny in your pocket. But to love something despite. To know the flaws and love them too. That is rare and pure and perfect.",
            author = "Kvothe"
        },
        Content () {
            text = "Bad enough to be a lettuce. How awful to think you are a lettuce too.",
            author = "Auri"
        },
        Content () {
            text = "Nothing was anything else. Nothing was anything it shouldn't be.",
            author = "Auri"
        },
        Content () {
            text = "Half of seeming clever is keeping your mouth shut at the right times.",
            author = "Kvothe"
        },
        Content () {
            text = "Words can light fires in the minds of men. Words can wring tears from the hardest hearts.",
            author = "Elodin"
        },
        Content () {
            text = "Using words to talk of words is like using a pencil to draw a picture of itself, on itself. Impossible. Confusing. Frustrating...",
            author = "Elodin"
        },
        Content () {
            text = "We are all human, aren’t we? Every human life is worth the same, and worth saving.",
            author = "Kingsley Shacklebolt"
        }
    };

    public ContentStack () {
        Object (
            margin_bottom: 24,
            transition_type: Gtk.StackTransitionType.CROSSFADE
        );
    }

    construct {
        int i = 1;
        foreach (var principle in content) {

            var text = new Gtk.Label (principle.text);
            text.max_width_chars = 80;
            text.valign = Gtk.Align.START;
            text.wrap = true;
            text.xalign = 0;
            text.get_style_context ().add_class ("quote-text");

            var author = new Gtk.Label (principle.author);
            author.max_width_chars = 28;
            author.wrap = true;
            author.valign = Gtk.Align.START;
            author.xalign = 0;
            author.get_style_context ().add_class ("quote-author");

            var grid = new Gtk.Grid ();
            grid.column_spacing = grid.row_spacing = 7;
            grid.halign = Gtk.Align.START;
            grid.margin_left = 10;

            grid.attach (text,   1, 0);
            grid.attach (author, 1, 1);

            add_named (grid, i.to_string ());

            i++;
        }

        var rand = Random.int_range (1, 11);
        visible_child_name = rand.to_string ();
    }
}
