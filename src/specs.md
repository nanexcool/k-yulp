Copyright (C) 2020 Maker Ecosystem Growth Holdings, INC.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

```act
behaviour get of SimpleStore
interface get()

types
  Val : uint256

storage
  val |-> Val

iff
  VCallValue == 0

returns Val
```

```act
behaviour store of SimpleStore
interface store(uint256 val_)

types
  Val : uint256

storage
  val |-> _ => val_

iff
  VCallValue == 0
```
